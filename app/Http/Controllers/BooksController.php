<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Books;

class BooksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = Books::where('deleted', 0)->get();
        if(count($data) > 0){ //mengecek apakah data kosong atau tidak
            $res['message'] = "Success";
            $res['count'] = count($data);
            $res['data'] = $data;
            return response($res);
        }
        else{
            $res['message'] = "Empty!";
            return response($res);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
        //
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $data = $request->all();
        // dd($data);
        $dataModel = new Books();
        $dataModel->book_name = $data['name'];
        $dataModel->book_author = $data['author'];
        $dataModel->book_type = $data['type'];
        $dataModel->book_desc = $data['desc'];
        $dataModel->qty = $data['qty'];
        $dataModel->deleted = false;
        $dataModel->image = $data['image'];

        $find = Books::where('book_name', $data['name'])->get();

        if (count($find) > 0){
            $res['message'] = "Buku sudah ada";
            return response($res);
        } else {
            if($dataModel->save()){
                $res['message'] = "Berhasil menambahkan buku";
                return response($res);
            } else {
                $res['message'] = "Gagal menambahkan buku";
                return response($res);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $data = Books::where('id', $id)->get();

        if(count($data) > 0){ //mengecek apakah data kosong atau tidak
            $res['message'] = "Success!";
            $res['data'] = $data[0];
            return response($res);
        }
        else{
            $res['message'] = "Empty!";
            return response($res);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        //
        $data = $request->all();
        // dd($data);

        $dataDb = Books::where('id', $id)->first();
        $dataDb->book_name = $data['name'];
        $dataDb->book_author = $data['author'];
        $dataDb->book_type = $data['type'];
        $dataDb->book_desc = $data['desc'];
        $dataDb->qty = $data['qty'];
        $dataDb->deleted = false;
        $dataDb->image = $data['image'];

        if($dataDb->save()){
            $res['message'] = "Data Berhasil diubah!";
            return response($res);
        } else {
            $res['message'] = "Gagal merubah data!";
            return response($res);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $dataDb = Books::where('id', $id)->first();
        $dataDb->deleted = true;

        if($dataDb->save()){
            $res['message'] = "Data Berhasil dihapus!";
            return response($res);
        } else {
            $res['message'] = "Gagal menghapus data!";
            return response($res);
        }
    }
}

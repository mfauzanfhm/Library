<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\Books;
use Illuminate\Support\Carbon;

class TransactionController extends Controller
{
    //
    public function index()
    {
        //
        $data = Transaction::where('deleted', 0)->get();
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
        $dataModel = new Transaction();
        $dataModel->user_id = $data['user_id'];
        $dataModel->book_id = $data['book_id'];
        $dataModel->borrow_date = Carbon::now();
        // $dataModel->return_date = $data['return_date'];
        $dataModel->qty = $data['qty'];
        $dataModel->status = true;
        $dataModel->deleted = false;

        if($dataDb = Books::where('id', $data['book_id'])->first()){
            $dataModel->name = "Peminjaman ".$dataDb['book_name'];
            if ($dataDb['qty'] < $data['qty']){
                $res['message'] = "Jumlah buku tidak cukup";
                return response($res);
            } else {
                $qty = $dataDb['qty'];
                $dataDb->qty = $qty - $data['qty'];
                if($dataDb->save()){
                    if($dataModel->save()){
                        $res['message'] = "Transaksi Berhasil";
                        return response($res);
                    } else {
                        $res['message'] = "Transaksi Gagal";
                        return response($res);
                    }
                } else {
                    $res['message'] = "Transaksi Gagal";
                    return response($res);
                }
            }
        } else {
            $res['message'] = "Buku tidak terdaftar";
            return response($res);
        }
    }

    public function returnBook(Request $request){
        $data = $request->all();
        // dd($data);
        $dataModel = Transaction::where('id', $data['user_id'])->first();
        $dataModel->book_id = $data['book_id'];
        // $dataModel->borrow_date = Carbon::now();
        $dataModel->return_date = Carbon::now();
        $dataModel->qty = $data['qty'];
        $dataModel->status = false;
        $dataModel->deleted = false;

        if($dataDb = Books::where('id', $data['book_id'])->first()){
            $dataModel->name = "Pengembalian ".$dataDb['book_name'];
            $qty = $dataDb['qty'];
            $dataDb->qty = $qty + $data['qty'];
            if($dataDb->save()){
                if($dataModel->save()){
                    $res['message'] = "Transaksi Berhasil";
                    return response($res);
                } else {
                    $res['message'] = "Transaksi Gagal";
                    return response($res);
                }
            } else {
                $res['message'] = "Transaksi Gagal";
                return response($res);
            }
        } else {
            $res['message'] = "Buku tidak terdaftar";
            return response($res);
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
        $data = Transaction::where('id', $id)->get();

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

    public function borrowList($id)
    {
        //
        $data = Transaction::where('user_id', $id)->get();

        if(count($data) > 0){ //mengecek apakah data kosong atau tidak
            $res['message'] = "Success!";
            $res['count'] = count($data);
            $res['data'] = $data;
            return response($res);
        }
        else{
            $res['message'] = "Empty!";
            return response($res);
        }
    }

    public function returnList()
    {
        //
        $data = Transaction::where('status', 0)->get();

        if(count($data) > 0){ //mengecek apakah data kosong atau tidak
            $res['message'] = "Success!";
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

        $dataDb = Transaction::where('id', $id)->first();
        $dataDb->name = $data['name'];
        $dataDb->book_id = $data['book_id'];
        $dataDb->borrow_date = $data['borrow_date'];
        $dataDb->return_date = $data['return_date'];
        $dataDb->qty = $data['qty'];
        $dataDb->status = $data['status'];
        $dataDb->deleted = false;

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
        $dataDb = Transaction::where('id', $id)->first();
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

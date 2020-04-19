<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\users;
use Hash;

class ControllerUsers extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = users::all();
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
        $name = $request->input('name');
        $phone = $request->input('phone');
        $email = $request->input('email');
        $password = $request->input('password');

        $data = new users();
        $data->name = $name;
        $data->phone = $phone;
        $data->email = $email;
        $data->password = $password;



        $find = users::where('email', $email)->get();

        if (count($find) > 0){
            $res['message'] = "User sudah ada";
            return response($res);
        } else {
            if($data->save()){
                $res['message'] = "Data Berhasil dimasukan!";
                $res['data'] = "$data";
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
        $data = users::where('id', $id)->get();

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

    public function login(Request $request)
    {
        //
        $dataJson = $request->all();
        $data = users::where('email', $dataJson['email'])->get();
            // ->where('password', $request->input('password'))

        if (count($data) > 0){
            if(\Hash::check($dataJson['password'], $data[0]['password'])){
                if(count($data) > 0){ //mengecek apakah data kosong atau tidak
                    $res['message'] = "Success!";
                    $res['data'] = $data[0];
                    return response($res);
                }
                else{
                    $res['message'] = "Email atau Password salah!";
                    return response($res);
                }
            } else {
                $res['message'] = "Email atau Password salah!";
                return response($res);
            }
        } else {
            $res['message'] = "User tidak ada";
            return response($res);
        }
    }

    public function register(Request $request)
    {
        //
        $data = $request->all();
        // dd($data);
        $password = bcrypt($data['password']);
        $dataModel = new users();
        $dataModel->name = $data['name'];
        $dataModel->phone = $data['phone'];
        $dataModel->email = $data['email'];
        $dataModel->password = $password;

        $find = users::where('email', $data['email'])->get();

        if (count($find) > 0){
            $res['message'] = "User sudah ada";
            return response($res);
        } else {
            if($dataModel->save()){
                $res['message'] = "Registrasi Berhasil";
                return response($res);
            }
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

        $dataDb = users::where('id', $id)->first();
        $dataDb->name = $data['name'];
        $dataDb->phone = $data['phone'];
        $dataDb->email = $data['email'];

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
        //
    }
}

@extends('layouts.master')
@section('content')
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Edit Data Siswa</h3>
                            </div>
                            <div class="panel-body">
                                <form action="/siswa/{{$siswa->id}}/update" method="POST" enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <div class="mb-3">
                                        <label for="NamaDepan" class="form-label">Nama Depan</label>
                                        <input type="text" name="nama_depan" class="form-control" id="NamaDepan" placeholder="Nama Depan" value="{{$siswa->nama_depan}}">
                                    </div>
                                    <div class="mb-3">
                                        <label for="NamaBelakang" class="form-label">Nama Belakang</label>
                                        <input type="text" name="nama_belakang" class="form-control" id="NamaBelakang" placeholder="Nama Belakang" value="{{$siswa->nama_belakang}}">
                                    </div>
                                    <div class="mb-3">
                                        <label for="JenisKelamin" class="form-label">Jenis Kelamin</label>
                                        <select name="jenis_kelamin" class="form-control" aria-label="JenisKelamin">
                                            <option value="L" @if($siswa->jenis_kelamin == 'L') selected @endif>Laki-laki</option>
                                            <option value="P" @if($siswa->jenis_kelamin == 'P') selected @endif>Perempuan</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="agama" class="form-label">Agama</label>
                                        <input type="text" name="agama" class="form-control" id="agama" placeholder="Agama" value="{{$siswa->agama}}">
                                    </div>
                                    <div class="mb-3">
                                        <label for="alamat" class="form-label">Alamat</label>
                                        <div class="form-floating">
                                            <textarea name="alamat" class="form-control" placeholder="Alamat" id="alamat" style="height: 150px">{{$siswa->alamat}}</textarea>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="avatar" class="form-label">Foto Profil</label>
                                        <div class="form-floating">
                                            <input class="form-control" type="file" name="avatar">
                                        </div>
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-warning">Update</button>
                                    <a href="/siswa" class="btn btn-danger">Back</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

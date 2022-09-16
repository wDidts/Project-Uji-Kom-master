@extends('layouts.master')
@section('content')
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Tambah Data Siswa</h3>
                            </div>
                            <div class="panel-body">
                                <form action="/siswa/create" method="POST" enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <div class="mb-3 {{$errors->has('nama_depan') ? 'has_error' : ''}}">
                                        <label for="NamaDepan" class="form-label">Nama Depan</label>
                                        <input type="text" name="nama_depan" class="form-control" id="NamaDepan" placeholder="Nama Depan" value="{{old('nama_depan')}}">
                                        @if($errors->has('nama_depan') ? 'has_error' : '')
                                            <span class="help_block">{{$errors->first('nama_depan')}}</span>
                                        @endif
                                    </div>
                                    <div class="mb-3">
                                        <label for="NamaBelakang" class="form-label">Nama Belakang</label>
                                        <input type="text" name="nama_belakang" class="form-control" id="NamaBelakang" placeholder="Nama Belakang" value="{{old('nama_belakang')}}">
                                    </div>
                                    <div class="mb-3 {{$errors->has('email') ? 'has_error' : ''}}">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" name="email" class="form-control" id="email" placeholder="Email" value="{{old('email')}}">
                                        @if($errors->has('email') ? 'has_error' : '')
                                            <span class="help_block">{{$errors->first('email')}}</span>
                                        @endif
                                    </div>
                                    <div class="mb-3 {{$errors->has('jenis_kelamin') ? 'has_error' : ''}}">
                                        <label for="JenisKelamin" class="form-label">Jenis Kelamin</label>
                                        <select name="jenis_kelamin" class="form-control" aria-label="JenisKelamin">
                                            <option value="L"{{(old('jenis_kelamin') == 'L') ? 'selected' : ''}}>Laki-laki</option>
                                            <option value="P"{{(old('jenis_kelamin') == 'P' ) ? 'selected' : ''}}>Perempuan</option>
                                        </select>
                                        @if($errors->has('jenis_kelamin') ? 'has_error' : '')
                                            <span class="help_block">{{$errors->first('jenis_kelamin')}}</span>
                                        @endif
                                    </div>
                                    <div class="mb-3 {{$errors->has('email') ? 'has_error' : ''}}">
                                        <label for="agama" class="form-label">Agama</label>
                                        <input type="text" name="agama" class="form-control" id="agama" placeholder="Agama" value="{{old('agama')}}">
                                        @if($errors->has('agama') ? 'has_error' : '')
                                            <span class="help_block">{{$errors->first('agama')}}</span>
                                        @endif
                                    </div>
                                    <div class="mb-3">
                                        <label for="alamat" class="form-label">Alamat</label>
                                        <div class="form-floating">
                                            <textarea name="alamat" class="form-control" placeholder="Alamat" id="alamat" style="height: 150px">{{old('alamat')}}</textarea>
                                        </div>
                                    </div>
                                    <div class="mb-3 {{$errors->has('email') ? 'has_error' : ''}}">
                                        <label for="avatar" class="form-label">Foto Profil</label>
                                        <div class="form-floating">
                                            <input class="form-control" type="file" name="avatar">
                                        </div>
                                        @if($errors->has('avatar') ? 'has_error' : '')
                                            <span class="help_block">{{$errors->first('avatar')}}</span>
                                        @endif
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <a href="/siswa" class="btn btn-danger">Back</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

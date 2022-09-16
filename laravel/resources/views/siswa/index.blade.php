@extends('layouts.master')
@section('content')
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Data Siswa</h3>
                            </div>
                            <div class="panel-body">
                                <a href="/siswa/add" class="btn btn-sm btn-primary">TAMBAH</a><hr>
                                <table class="table table-hover" id="datatable">
                                    <thead>
                                        <tr>
                                            <th>Nama Depan</th>
                                            <th>Nama Belakang</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Agama</th>
                                            <th>Alamat</th>
                                            <th>Nilai Rata-rata</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($data_siswa as $siswa)
                                        <tr>
                                            <td><a href="/siswa/{{$siswa->id}}/profile">{{$siswa->nama_depan}}</a></td>
                                            <td><a href="/siswa/{{$siswa->id}}/profile">{{$siswa->nama_belakang}}</a></td>
                                            <td>{{$siswa->jenis_kelamin}}</td>
                                            <td>{{$siswa->agama}}</td>
                                            <td>{{$siswa->alamat}}</td>
                                            <td>{{$siswa->nilairata()}}</td>
                                            <td><a href="/siswa/{{$siswa->id}}/edit" class="btn btn-sm btn-warning">EDIT</a>
                                                <a href="#" class="btn btn-sm btn-danger delete" siswa-id="{{$siswa->id}}">DELETE</a></td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                {{-- {{$data_siswa->siswa->links()}} --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('footer')
    <script>
        $(document).ready(function(){
            $('#datatable').DataTable();

            $('.delete').click(function(){
            var siswa_id = $(this).attr('siswa-id');
            swal({
                title: "Yakin?",
                text: "Apakah data siswa id "+siswa_id+" akan dihapus?!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
                })
                .then((willDelete) => {
                if (willDelete) {
                    window.location = "/siswa/"+siswa_id+"/delete";
                    swal("Yeay! Data berhasil Terhapus!", {
                    icon: "success",
                    });
                } else {
                    swal("Ups! Data aman tidak terhapus");
                }
                });
            });
        });

    </script>
@stop

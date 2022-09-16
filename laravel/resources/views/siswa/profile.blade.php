@extends('layouts.master')

@section('header')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
@stop

@section('content')
<div class="main">

    <!-- MAIN CONTENT -->
    <div class="main-content">
        <div class="container-fluid">
            <div class="panel panel-profile">
            <div class="clearfix">
            <!-- LEFT COLUMN -->
            <div class="profile-left">
                <!-- PROFILE HEADER -->
                <div class="profile-header">
                    <div class="overlay"></div>
                    <div class="profile-main">
                        <img src="{{$siswa->getAvatar()}}" class="img-circle" alt="Avatar" width="90px">
                        <h3 class="name">{{$siswa->nama_depan}} {{$siswa->nama_belakang}}</h3>
                        <span class="online-status status-available">Available</span>
                    </div>
                    <div class="profile-stat">
                        <div class="row">
                            <div class="col-md-4 stat-item">
                                {{$siswa->mapel->count()}} <span>Mata Pelajaran</span>
                            </div>
                            <div class="col-md-4 stat-item">
                                {{$siswa->nilairata()}} <span>Nilai Rata-rata</span>
                            </div>
                            <div class="col-md-4 stat-item">
                                2174 <span>Points</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END PROFILE HEADER -->

                <!-- PROFILE DETAIL -->
                <div class="profile-detail">
                    <div class="profile-info">
                        <h4 class="heading">Data Diri</h4>
                        <ul class="list-unstyled list-justify">
                            <li>Jenis Kelamin <span>{{$siswa->jenis_kelamin}}</span></li>
                            <li>Agama <span>{{$siswa->agama}}</span></li>
                            <li>Alamat <span>{{$siswa->alamat}}</span></li>
                        </ul>
                    </div>

                    <div class="text-center"><a href="/siswa/{{$siswa->id}}/edit" class="btn btn-warning">Edit Profile</a></div>
                </div>
                <!-- END PROFILE DETAIL -->
            </div>
            <!-- END LEFT COLUMN -->

            <!-- RIGHT COLUMN -->
            <div class="profile-right">
                <button type="button" class="btn btn-primary navbar-btn-right" data-toggle="modal" data-target="#exampleModal">
                    Tambah Nilai
                </button>
                <!-- TABBED CONTENT -->
                <div class="custom-tabs-line tabs-line-bottom left-aligned">
                    <ul class="nav" role="tablist">
                        <li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">Aktivitas Terakhir</a></li>
                    </ul>
                </div>
                <div class="tab-content">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Daftar</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Kode</th>
                                        <th>Nama</th>
                                        <th>Semester</th>
                                        <th>Nilai</th>
                                        <th>Guru</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($siswa->mapel as $mapel)
                                    <tr>
                                        <td>{{$mapel->kode}}</td>
                                        <td>{{$mapel->nama}}</td>
                                        <td>{{$mapel->semester}}</td>
                                        <td><a href="#" class="ubahNilai" data-type="text" data-pk="{{$mapel->id}}" data-url="/api/siswa/{{$siswa->id}}/editnilai" data-title="Input Nilai">{{$mapel->pivot->nilai}}</a></td>
                                        <td><a href="/guru/{{$mapel->guru_id}}/profile">{{$mapel->guru->nama}}</a></td>
                                        <td><a href="/siswa/{{$siswa->id}}/{{$mapel->id}}/deletenilai" class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus?')">DELETE</a></></td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                        <div class="panel">
                            <div id="chartNilai"></div>
                        </div>
                    </div>
                </div>
                <!-- END TABBED CONTENT -->
            </div>
            <!-- END RIGHT COLUMN -->
            </div>
        </div>
    </div>
        <!-- END MAIN CONTENT -->
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Tambah Nilai</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <form action="/siswa/{{$siswa->id}}/addnilai" method="POST" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="form-group">
                        <label for="mapel">Mata Pelajaran</label>
                            <select class="form-control" id="exampleFormControlSelect1" name="mapel">
                                @foreach($matapelajaran as $mp)
                                    <option value="{{$mp->id}}">{{$mp->nama}}</option>
                                @endforeach
                            </select>
                     </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nilai</label>
                            <input type="text" name="nilai" class="form-control" id="exampleInputNama1" aria-describedby="emailHelp" placeholder="Nilai" value="{{old('nilai')}}">
                            @if($errors->has('nilai'))
                                <span class="help-block">{{$errors->first('nilai')}}</span>
                            @endif
                        </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@stop

@section('footer')
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
    <script>
        Highcharts.chart('chartNilai', {
            chart: {
                type: 'column',
                zoomType: 'y'
            },
            title: {
                text: 'Laporan Nilai Siswa'
            },
            xAxis: {
                categories: {!!json_encode($categories)!!},
                title: {
                    text: null
                },
                accessibility: {
                    description: 'Mata Pelajaran'
                }
            },
            yAxis: {
                title: {
                    text: 'Nilai'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            plotOptions: {
                column: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            tooltip: {
                stickOnContact: true,
                borderColor: '#555',
                backgroundColor: 'rgba(255, 255, 255, 0.93)'
            },
            legend: {
                enabled: true
            },
            series: [
                {
                    name: 'Nilai',
                    data: {!!json_encode($data)!!},
                    color: { patternIndex: 0 },
                    borderColor: '#5f98cf'
                }
            ]
        });

        // Editable Nilai
        $(document).ready(function() {
            $('.ubahNilai').editable({});
        });
    </script>
@stop

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
                        <img src="#" class="img-circle" alt="Avatar" width="90px">
                        <h3 class="name">{{$guru->nama}}</h3>
                        <span class="online-status status-available">Available</span>
                    </div>
                </div>
                <!-- END PROFILE HEADER -->
            </div>
            <!-- END LEFT COLUMN -->

            <!-- RIGHT COLUMN -->
            <div class="profile-right">
                <!-- TABBED CONTENT -->
                <div class="custom-tabs-line tabs-line-bottom left-aligned">
                    <ul class="nav" role="tablist">
                        <li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">Mata Pelajaran</a></li>
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
                                        <th>Nama</th>
                                        <th>Semester</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($guru->mapel as $mapel)
                                    <tr>
                                        <td>{{$mapel->nama}}</td>
                                        <td>{{$mapel->semester}}</td>
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
@stop

@section('footer')
@stop

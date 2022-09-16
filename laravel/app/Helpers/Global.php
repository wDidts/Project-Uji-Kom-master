<?php

use App\Models\Guru;
use App\Models\Siswa;

    function limaBesar()
    {
        $siswa = Siswa::all();
        $siswa->map(function($s){
            $s->nilairata = $s->nilairata();
            return $s;
        });
        $siswa = $siswa->sortByDesc('nilairata')->take(5);
        return $siswa;
    }

    function totalSiswa()
    {
        return Siswa::count();
    }

    function totalGuru()
    {
        return Guru::count();
    }
?>

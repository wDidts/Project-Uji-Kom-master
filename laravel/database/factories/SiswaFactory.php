<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Siswa>
 */
class SiswaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nama_depan' => fake()->name(),
            'nama_belakang' => '',
            'jenis_kelamin' => fake()->randomElement(['L'],['P']),
            'agama' => fake()->randomElement(['Islam','Kristen','Katolik','Hindu','Buddha']),
            'alamat' => fake()->address,
        ];
    }
}

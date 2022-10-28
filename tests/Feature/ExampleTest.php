<?php

namespace Tests\Feature;

// use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_the_application_returns_a_successful_response()
    {
        //COMPRUEBA QUE LAS RUTAS/STATUS/PAGINAS EXISTAN
        //significa un view
        $response = $this->get('/departure');

        $response->assertStatus(200);
    }
}

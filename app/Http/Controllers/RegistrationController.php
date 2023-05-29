<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\RegistrationRequest;

class RegistrationController extends Controller
{
    public function register(RegistrationRequest $request)
    {
        // The request has already been validated at this point
        $validatedData = $request->validated();

        return response()->json([
            'success' => true,
            'data' => $validatedData,
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required',
        ]);

        $name = $validatedData['name'];
        $email = $validatedData['email'];
        $message = $validatedData['message'];

        // Send email to a predefined address
        $to = $email;
        $subject = 'New Contact Form Submission';
        $emailContent = "Name: $name\nEmail: $email\nMessage: $message";

        Mail::raw($emailContent, function ($message) use ($to, $subject) {
            $message->to($to)->subject($subject);
        });

        return redirect()->back()->with('success', 'Thank you for your message! We will get back to you soon.');
    }
}

package com.example.imperativecounterapp

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private lateinit var countTextView: TextView
    private lateinit var incrementButton: Button
    private lateinit var decrementButton: Button
    private lateinit var resetButton: Button
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        countTextView = findViewById(R.id.countTextView)
        incrementButton = findViewById(R.id.incrementButton)
        decrementButton = findViewById(R.id.decrementButton)
        resetButton = findViewById(R.id.resetButton)

        updateCountText()

        incrementButton.setOnClickListener {
            count++
            updateCountText()
        }

        decrementButton.setOnClickListener {
            count--
            updateCountText()
        }

        resetButton.setOnClickListener {
            count = 0
            updateCountText()
        }
    }

    private fun updateCountText() {
        countTextView.text = count.toString()
    }
}
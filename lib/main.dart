// AZ AI - MainActivity.kt
// Basic Android Kotlin starter for the AZ AI interface.
// AI/API integration should be connected separately.

package com.azai.app

import android.os.Bundle
import android.graphics.Color
import android.view.Gravity
import android.view.View
import android.widget.*
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private lateinit var chatContainer: LinearLayout
    private lateinit var input: EditText

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.rgb(8, 8, 8))
        }

        // Header
        val header = TextView(this).apply {
            text = "A ⚡ Z   AI"
            textSize = 24f
            setTextColor(Color.rgb(212, 175, 55))
            gravity = Gravity.CENTER
            setPadding(16, 30, 16, 30)
        }

        // Chat area
        chatContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(20, 20, 20, 20)
        }

        val scrollView = ScrollView(this).apply {
            addView(chatContainer)
        }

        // Input area
        val bottom = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(12, 10, 12, 15)
        }

        input = EditText(this).apply {
            hint = "اكتب رسالتك..."
            hintTextColor = Color.GRAY
            setTextColor(Color.WHITE)
            setBackgroundColor(Color.rgb(25, 25, 25))
            setPadding(20, 15, 20, 15)
            layoutParams = LinearLayout.LayoutParams(
                0,
                LinearLayout.LayoutParams.WRAP_CONTENT,
                1f
            )
        }

        val sendButton = Button(this).apply {
            text = "إرسال"
            setTextColor(Color.BLACK)
            setBackgroundColor(Color.rgb(212, 175, 55))

            setOnClickListener {
                sendMessage()
            }
        }

        bottom.addView(input)
        bottom.addView(sendButton)

        root.addView(header)
        root.addView(
            scrollView,
            LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                0,
                1f
            )
        )
        root.addView(bottom)

        setContentView(root)
    }

    private fun sendMessage() {
        val message = input.text.toString().trim()

        if (message.isEmpty()) return

        addMessage(message, true)

        InputChip(
          label: const Text('Input'),
          onDeleted: () {},
        )
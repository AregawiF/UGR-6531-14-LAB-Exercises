package com.example.counter_jetpack

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.counter_jetpack.ui.theme.Counter_jetpackTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Counter_jetpackTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    CounterApp()
                }
            }
        }
    }
}

@Composable
fun CounterApp() {
    var count by remember { mutableStateOf(0) }

    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Text(
            text = "Count: $count",
            fontSize = 32.sp,
            modifier = Modifier.padding(16.dp)
        )
        Spacer(modifier = Modifier.height(16.dp))
        Row {
            Button(
                onClick = { count++ },
                modifier = Modifier.padding(8.dp)
            ) {
                Text("Increment")
            }
            Button(
                onClick = { count-- },
                modifier = Modifier.padding(8.dp)
            ) {
                Text("Decrement")
            }
            Button(
                onClick = { count = 0 },
                modifier = Modifier.padding(8.dp)
            ) {
                Text("Reset")
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    Counter_jetpackTheme {
        CounterApp()
    }
}

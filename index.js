const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

exports.helloWorld = functions.https.onRequest((request, response) => {
  response.send("Hello from Firebase!");
});

exports.addMessage = functions.https.onCall((data, context) => {
  const text = data.text;
  return { text: `Received message: ${text}` };
});

import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

exports.createUser = functions.region("southamerica-east1")
  .auth.user().onCreate((user) => {
    const db = admin.firestore();
    const userModel = {
      uid: user.uid,
      email: user.email,
      username: "",
      photoURL: "",
      displayName: "",
      dateCreated: new Date(),
    };
    return db.collection("users").doc(user.uid).set(userModel);
  });

exports.deleteUser = functions.region("southamerica-east1").auth
  .user().onDelete((user) => {
    const db = admin.firestore();
    return db.collection("users").doc(user.uid).delete();
  });


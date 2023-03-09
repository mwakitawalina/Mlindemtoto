import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';
import 'auth_controller.dart';

class MainController extends GetxController{
  var firestore;
  //creating a table(collection)
  var civicEducation = <String,dynamic>{}.obs;
  //variable to list content
  var civicEducationSelectedId= "".obs;

  @override
  void onReady() {
    
    super.onReady();
    firestore= FirebaseFirestore.instance;
    //reactive list
    civicEducation.bindStream(civicEducationStream());
}

//creating data
createCivicEducation(title, content) async {
  Utils.showLoading(message: "Creating Civic Education");
  var userId = AuthController.to.firebaseUser.value?.uid;
  try{
    await firestore.collection('CivicEducation').add({
      "userId": userId, "title": title, "content": content,
    });
    Utils.showSuccess("success");
    
  }catch(e){
    Utils.showError("Failed to create. Kindly try again");
  }
}

//Updating data
updateCivicEducation(title, content) async {
  Utils.showLoading(message: "Updating Civic Education");
  var userId = AuthController.to.firebaseUser.value?.uid;
  try{
    await firestore.collection('CivicEducation').set({
      "userId": userId, "title": title, "content": content,
    });
    Utils.showSuccess("success");
    
  }catch(e){
    Utils.showError("Failed to update. Kindly try again");
  }
}

//Deleting data
deleteCivicEducation(id) async {
  Utils.showLoading(message: "Deleting Civic Education");
  var userId = AuthController.to.firebaseUser.value?.uid;
  try{
    await firestore.collection('CivicEducation').doc(id).delete();
    Utils.showSuccess("success");
    
  }catch(e){
    Utils.showError("Failed to delete. Kindly try again");
  }
}

//Fetch livestream
Stream<Map<String,dynamic>> civicEducationStream(){
  var ref = FirebaseFirestore.instance.collection('CivicEducation').snapshots();
  return ref.map((list){
      var data = <String, dynamic>{};
      list.docs.forEach((element) {
        data[element.id]=element.data();
      });
      return data;
    });
}

//select an item id
selectCivicEducation(id){
  civicEducationSelectedId.value= id;
  update();
}
}
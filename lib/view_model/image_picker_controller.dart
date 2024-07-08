import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  ImagePicker imagePicker=ImagePicker();
  RxString imagePath=''.obs;

  getImage()async{
final image=await imagePicker.pickImage(source: ImageSource.camera);
if(image!=null){
  imagePath.value=image.path.toString();
}
  }
}
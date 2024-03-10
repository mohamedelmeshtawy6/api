

abstract class ApiComsumer{
 get(
  String path,{
    Object?data,
    Map<String,dynamic> ?queryParameter,
    bool isFormat=false
  }
);
post( String path,{
    Object?data,
    Map<String,dynamic> ?queryParameter,
     bool isFormat=false
  });
patch( String path,{
    Object?data,
    Map<String,dynamic> ?queryParameter,
     bool isFormat=false
  });
delete( String path,{
    Object?data,
    Map<String,dynamic> ?queryParameter,
     bool isFormat=false
  });




}
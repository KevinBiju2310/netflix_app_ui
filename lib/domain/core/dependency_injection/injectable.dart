
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/dependency_injection/injectable.config.dart';


final getIt = GetIt.instance;

 
@InjectableInit(  
  initializerName: 'init', 
)  
Future <void> configureInjection() async { 
  
  await getIt.init(environment: Environment.prod); 
}






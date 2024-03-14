import './entities/CenterEntity.dart';

import './repositories/CenterRepository.dart';

void main(List<String> arguments) async {
  print('Hello world !');

  List<CenterEntity> centers = await CenterRepository.getCenters();

  centers.sort((a, b) {
    if (a.depCode == null && b.depCode == null) {
      return 0;
    } else if (a.depCode == null) {
      return 1;
    } else if (b.depCode == null) {
      return -1; 
    } else {
      return a.depCode!.compareTo(b.depCode!);
    }
  });

  String? lastDepCode = '';
  int i = 1;

  for (var center in centers) {

    if (lastDepCode != center.depCode) {

      if (center.depCode == null) {
        print('\n--- Unknown ---');
      } else {
        print('\n--- ${center.depName} ---');
      }
    }
    lastDepCode = center.depCode;

    print('$i - ${center.name}');
    i++;
  }
}

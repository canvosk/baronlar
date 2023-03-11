

enum PermissionHandlerReturns{
  error,
  granted,
  denied,
  permanentlyDenied,
}

extension PermissionHandlerReturnsExtension on PermissionHandlerReturns{

  static const Map<PermissionHandlerReturns,int> _keys = {
    PermissionHandlerReturns.error:0,
    PermissionHandlerReturns.granted:1,
    PermissionHandlerReturns.denied:2,
    PermissionHandlerReturns.permanentlyDenied:3,
  };

  int get key => _keys[this]!;

}
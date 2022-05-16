/// Base interface for doing service lookups.  This can work with the provider
/// package, or a injector framework like kiwi
abstract class SunnyGet {
  T call<T>();
  T get<T>({dynamic context, String? name});
  T? find<T extends Object>({dynamic context, String? name}) => call<T>();
}

class _NullSunnyGet implements SunnyGet {
  const _NullSunnyGet();
  @override
  T get<T>({dynamic context, String? name}) => call<T>();
  T? find<T extends Object>({dynamic context, String? name}) => null;

  @override
  T call<T>() =>
      throw "No SunnyGet registered. Your application must register a SunnyGet to be able to resolve core services";
}

SunnyGet _sunny = _NullSunnyGet();
SunnyGet get sunny => _sunny;

set sunny(SunnyGet sunny) {
  _sunny = sunny;
}

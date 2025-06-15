start:
	make clean && make get && make rebuild && make fix && make format
get:
	fvm flutter pub get
clean:
	fvm flutter clean
format:
	fvm dart format .
packages_upgrade:
	fvm flutter packages upgrade
rebuild:
	fvm dart run build_runner build  --delete-conflicting-outputs
fix:
	fvm dart fix --apply
watch:
	fvm dart run build_runner watch
locale:
	fvm dart run intl_utils:generate
{
  fetchCrate,
  lib,
  rustPlatform,
}:

rustPlatform.buildRustPackage rec {
  pname = "ansi-escape-sequences-cli";
  version = "0.1.4";

  src = fetchCrate {
    inherit pname version;
    hash = "sha256-KGPlNXkF16VdoOb3tg3nsQRdtgU83z7ibPy965bvvDk=";
  };

  useFetchCargoVendor = true;
  cargoHash = "sha256-r2dZ3io8YRWE1BJQ+gM5uwhz56RgvjHvgmARnHVsQCA=";

  meta = {
    description = "Quickly get ANSI escape sequences";
    longDescription = ''
      CLI utility called "ansi" to quickly get ANSI escape sequences. Supports
      the colors and styles, such as bold or italic.
    '';
    homepage = "https://github.com/phip1611/ansi-escape-sequences-cli";
    license = with lib.licenses; [ mit ];
    maintainers = with lib.maintainers; [ phip1611 ];
    mainProgram = "ansi";
  };
}

import 'package:bech32/bech32.dart';

void main() {
  Segwit address = segwit.decode(
      "bc1pw508d6qejxtdg4y5r3zarvary0c5xw7kw508d6qejxtdg4y5r3zarvary0c5xw7k7grplx");
  print("scriptPubKey: ${address.scriptPubKey}");
  print("version: ${address.version}");
  print("program: ${address.program}");

  Segwit otherAddress = Segwit('bc', 1, [0, 0]);
  print(segwit.encode(otherAddress));

  // Decode a lightning payment request
  String paymentRequest =
      "lnbc1pvjluezpp5qqqsyqcyq5rqwzqfqqqsyqcyq5rqwzqfqqqsyqcyq5rqwzqfqypqdpl2pkx2ctnv5sxxmmwwd5kgetjypeh2ursdae8g6twvus8g6rfwvs8qun0dfjkxaq8rkx3yf5tcsyz3d73gafnh3cax9rn449d9p5uxz9ezhhypd0elx87sjle52x86fux2ypatgddc6k63n7erqz25le42c4u4ecky03ylcqca784w";
  Bech32Codec codec = Bech32Codec();
  Bech32 bech32 = codec.decode(
    paymentRequest,
    paymentRequest.length,
  );
  print("hrp: ${bech32.hrp}");
  print("data: ${bech32.data}");
}

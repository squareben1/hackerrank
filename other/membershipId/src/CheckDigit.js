function createCheckDigit(membershipId) {
  var string_arr = membershipId.split("");

  var num_arr = string_arr.map((x) => +x);

  var sum = num_arr.reduce(function (a, b) {
    return a + b;
  }, 0);

  return sum <= 9 ? sum : createCheckDigit(sum.toString());
}

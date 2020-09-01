function createCheckDigit(membershipId) {
  var string_arr = membershipId.split("");

  var num_arr = string_arr.map((x) => +x);

  var sum = num_arr.reduce(function (a, b) {
    return a + b;
  }, 0);

  console.log(sum);
  if (sum <= 9) {
    return sum;
  } else {
    return createCheckDigit(sum.toString());
  }
}

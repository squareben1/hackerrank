describe("CheckDigit", function () {
  it("returns 7", function () {
    expect(createCheckDigit("55555")).toEqual(7);
  });

  it("returns 55", function () {
    expect(createCheckDigit("5555555555555")).toEqual(7);
  });
});

describe("CheckDigit", function () {
  it("returns 7", function () {
    expect(createCheckDigit("55555")).toEqual(7);
  });

  it("returns 2 from str equalling 65", function () {
    expect(createCheckDigit("5555555555555")).toEqual(2);
  });
});

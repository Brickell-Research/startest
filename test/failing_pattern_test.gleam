import startest.{describe, it}
import startest/expect

pub fn failing_pattern_tests() {
  describe("Test Group", [
    it("should do something", fn() {
      2 + 2
      |> expect.to_equal(4)
    }),
    it("should do something else", fn() {
      3 + 3
      |> expect.to_equal(6)
    }),
  ])
}

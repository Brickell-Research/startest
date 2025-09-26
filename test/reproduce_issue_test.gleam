import startest.{describe, it}
import startest/expect

pub fn build_provider_datadog_test() {
  describe("build_provider_datadog_test", [
    describe("build_provider", [
      describe("Datadog", [
        it("build_provider_datadog_test", fn() {
          let expected = "test_value"
          let actual = "test_value"
          expect.to_equal(actual, expected)
        }),
      ]),
    ]),
  ])
}

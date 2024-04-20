import gleam/io
import gleam_community/ansi
import startest/reporters.{type Reporter, Reporter}
import startest/test_case.{Failed, Passed, Skipped}

pub fn new() -> Reporter {
  Reporter(
    report: fn(executed_test) {
      case executed_test.outcome {
        Passed -> io.print(ansi.green("·"))
        Failed(_failure) -> {
          io.print(ansi.red("x"))
        }
        Skipped -> io.print(ansi.gray("-"))
      }
    },
    finished: fn() { io.println("") },
  )
}

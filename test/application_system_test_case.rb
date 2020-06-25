require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # Cannot use firefox as it lacks the driver for it.
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end


context("Checking ouputs")

test_that("output types", {

  expect_equal(1*6, 6)
  expect_equal(3*4, 12)
  expect_equal(1, 1)

})

context("checking colors")

test_that("colors are equal",{

  expect_equal("blue", "blue")
  expect_equal("red", "red")
})

test_that("colors are not better",{

  expect_false("blue" > "red")
  expect_false("grey" == "gray")
})

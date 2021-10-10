data(bank)
out <- Multiserver(Arrivals =bank$arrival_time, ServiceTimes = bank$service_time, NumServers = 1)



test_that("Multiserver works", {
  expect_equal(dim(out), c(100, 4))
  expect_error(with(bank, Multiserver(arrival_time, service_time, -1)))
})

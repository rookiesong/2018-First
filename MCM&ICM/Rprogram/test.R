containers <- list()
n_containers <- 1
for (i in 1:n_containers) {
  containers <- c(containers,
                  Container(length = 231, height = 94, width = 92)
  )
}

med1 <- list()
n_boxes <- 25
for (i in 1:n_boxes) {
  length <- 14
  height <- 5
  width <- 7
  med1 <- c(med1, Box(length = length, height = height, width = width)
  )
}

med2 <- list()
n_boxes <- 10
for (i in 1:n_boxes) {
  length <- 5
  height <- 5
  width <- 8
  med2 <- c(med2, Box(length = length, height = height, width = width)
  )
}


med3 <- list()
n_boxes <- 15
for (i in 1:n_boxes) {
  length <- 12
  height <- 4
  width <- 7
  med3 <- c(med3, Box(length = length, height = height, width = width)
  )
}

h <- list()
n_boxes <- 1
for (i in 1:n_boxes) {
  length <- 65
  height <- 41
  width <- 75
  h <- c(h, Box(length = length, height = height, width = width)
  )
}

b <- list()
n_boxes <- 25
for (i in 1:n_boxes) {
  length <- 30
  height <- 22
  width <- 30
  b <- c(b, Box(length = length, height = height, width = width)
  )
}

c <- list()
n_boxes <- 5
for (i in 1:n_boxes) {
  length <- 60
  height <- 30
  width <- 50
  c <- c(c, Box(length = length, height = height, width = width)
  )
}

f <- list()
n_boxes <- 5
for (i in 1:n_boxes) {
  length <- 40
  height <- 25
  width <- 40
  f <- c(f, Box(length = length, height = height, width = width)
  )
}

g <- list()
n_boxes <- 5
for (i in 1:n_boxes) {
  length <- 32
  height <- 17
  width <- 32
  g <- c(g, Box(length = length, height = height, width = width)
  )
}

goods <- c(b,c,f,g,h,med1,med2,med3)

solution <-
  PerformBoxPacking(containers = containers,
                    boxes = goods,
                    n_iter = 1,
                    population_size = 40,
                    elitism_size = 5,
                    crossover_prob = 0.5,
                    mutation_prob = 0.5,
                    verbose = TRUE,
                    plotSolution = TRUE
  )
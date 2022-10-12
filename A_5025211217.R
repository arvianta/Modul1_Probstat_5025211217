cat("===============Nomor 1===============\n")

cat("a.")
x <- 3
p <- 0.20
Peluang <- dgeom(x, p)
cat(paste("Peluang =", Peluang, "\n"))

cat("b.")
n <- 10000
mean <- mean(rgeom(n, p) == x)
cat(paste("Mean =", mean, "\n"))

cat("c.")
cat("Pada poin A, hasil yang didapatkan akan tetap karena distribusi geometriknya yang sama.
     Pada poin B, hasil yang didapatkan akan berbeda-beda karena distribusi geometriknya bernilai acak
     Namun, hasil dari poin B akan selalui mendekati hasil pada poin A karena poin B merupakan estimasi\n")

cat("d.")
cat("Histogram Distribusi Geometrik\n")
hist(rgeom(n, p), 
     main = "Histogram Distribusi Geometrik", 
     xlab ="x",
     col = "pink")

cat("e.")
rataan <- 1 / p
varian <- (1 - p) / (p^2)
cat(paste("Nilai rataan = ", rataan))
cat(paste("Nilai varian = ", varian))


cat("===============Nomor 2===============\n")

cat("a.")
n <- 20
p <- 0.2
sembuh <- 4
p4 <- dbinom(sembuh, n, p)
cat(paste("Peluang =", p4, "\n"))

cat("b.")
cat("Histogram Distribusi Binomial\n")
hist(rbinom(20, 20, 0.2),
     main = "Histogram Distribusi Binomial",
     xlab = "x",
     col = "pink")

cat("c.")
rataan = sembuh * p
varian = rataan * (1- p)
cat(paste("Nilai Rataan = ", rataan))
cat(paste("Nilai Varian = ", varian))


cat("===============Nomor 2===============\n")

cat("a.")
n <- 20
p <- 0.2
sembuh <- 4
p4 <- dbinom(sembuh, n, p)
cat(paste("Peluang =", p4, "\n"))

cat("b.")
cat("Histogram Distribusi Binomial\n")
hist(rbinom(20, 20, 0.2),
     main = "Histogram Distribusi Binomial",
     xlab = "x",
     col = "pink")

cat("c.")
rataan = sembuh * p
varian = rataan * (1- p)
cat(paste("Nilai Rataan = ", rataan))
cat(paste("Nilai Varian = ", varian))


cat("===============Nomor 3===============\n")

cat("a.")
lmbd <- 4.5
x <- 6
peluang <- dpois(x, lmbd)
cat(paste("Peluang =", peluang, "\n"))

cat("b.")
n <- 365
cat("Histogram Distribusi Poisson\n")
hist(rpois(n, lmbd),
     main = "Histogram Distribusi Poisson",
     xlab = "x",
     col = "pink")

cat("c.")
cat("Hasil yang didapatkan pada poin B berdasarkan simulasi kelahiran 6 bayi akan lahir di rumah sakit selama setahun akan mendekati 
     peluang yang didapat pada poin A. Dapat disimpulkan bahwa simulasi distribusi poisson sesuai dengan pendistribusinya.\n")

cat("d.")
rataan <- lmbd
varian <- lmbd
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))


cat("===============Nomor 4===============\n")

cat("a.")
x <- 2
v <- 10
peluang <- dchisq(x, v)
cat(paste("Peluang =", peluang, "\n"))

cat("b.")
n <- 100
hist(rchisq(n, v),
     main = "Histogram Distribusi Chi-Square",
     xlab = "x",
     col = "pink")

cat("c.")
rataan <- v
varian <- 2 * v
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))


cat("===============Nomor 5===============\n")

cat("a.")
lmbd <- 3
peluang <- dexp(1, lmbd)
cat(paste("Peluang =", peluang, "\n"))


cat("b.")
n1 <- 10
n2 <- 100
n3 <- 1000
n4 <- 10000

hist(rexp(n1, lmbd),
     main = "Histogram Distribusi Exponensial untuk 10 Bilangan Random",
     xlab = "x",
     col = "pink")
hist(rexp(n2, lmbd),
     main = "Histogram Distribusi Exponensial untuk 100 Bilangan Random",
     xlab = "x",
     col = "pink")
hist(rexp(n3, lmbd),
     main = "Histogram Distribusi Exponensial untuk 1000 Bilangan Random",
     xlab = "x",
     col = "pink")
hist(rexp(n4, lmbd),
     main = "Histogram Distribusi Exponensial untuk 10000 Bilangan Random",
     xlab = "x",
     col = "pink")

cat("c.")
n <- 100
set.seed(1)

rataan <- mean(rexp(n, lmbd))
varian <- var(rexp(n, lmbd))
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))


cat("===============Nomor 6===============\n")

cat("a.\n")
n <- 100
n.mean <- 50
n.sd <- 8

rd <- rnorm(n, n.mean, n.sd)
mean <- mean(rd)
sd <- sd(rd)

x1 <- sample(subset(rd, rd > mean), 1)
x2 <- sample(subset(rd, rd < mean), 1)

peluang <- pnorm(x1, mean, sd) - pnorm(x2, mean, sd)
z.score <- qnorm(peluang, mean, sd)

cat(paste("Peluang =", peluang, "\n"))
cat(paste("Z-Score =", z.score, "\n"))
plot(rd, type = 'h', xlab = "x")

cat("b.\n")
hist(rd,
     main = "5025211217_Rayhan Arvianta Bayuputra_Probstat_A_DNhistogram",
     xlab = "x",
     col = "pink",
     breaks = 50)

cat("c.\n")
varian <- var(rd)
cat(paste("Nilai Varian =", varian, "\n"))

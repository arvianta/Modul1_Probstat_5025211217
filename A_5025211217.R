cat("===============Nomor 1===============\n")
#Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 

#a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari 
#   populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

cat("a.\n")
x <- 3
p <- 0.20
Peluang <- dgeom(x, p)
cat(paste("Peluang =", Peluang, "\n"))

#b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik
#   acak () == 3 )

cat("b.\n")
n <- 10000
mean(rgeom(n, p) == x)
cat(paste("Mean =", mean, "\n"))

#c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

cat("c.\n")
cat("Pada poin A, hasil yang didapatkan akan tetap karena distribusi geometriknya yang sama.
     Pada poin B, hasil yang didapatkan akan berbeda-beda karena distribusi geometriknya bernilai acak
     Namun, hasil dari poin B akan selalui mendekati hasil pada poin A karena poin B merupakan estimasi")

#d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

cat("d.\n")
cat("Histogram Distribusi Geometrik\n")
hist(rgeom(n, p), 
     main = "Histogram Distribusi Geometrik", 
     xlab ="x",
     col = "pink")

#e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

cat("e.\n")
rataan <- 1 / p
varian <- (1 - p) / (p^2)
cat(paste("Nilai rataan = ", rataan))
cat(paste("Nilai varian = ", varian))


cat("===============Nomor 2===============\n")
#Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

#a. Peluang terdapat 4 pasien yang sembuh.

cat("a.\n")
n <- 20
p <- 0.2
sembuh <- 4
p4 <- dbinom(sembuh, n, p)
cat(paste("Peluang =", p4))

#b. Gambarkan grafik histogram berdasarkan kasus tersebut.

cat("b.\n")
cat("Histogram Distribusi Binomial\n")
hist(rbinom(20, 20, 0.2),
     main = "Histogram Distribusi Binomial",
     xlab = "x",
     col = "pink")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

cat("c.\n")
rataan = sembuh * p
varian = rataan * (1- p)
cat(paste("Nilai Rataan = ", rataan))
cat(paste("Nilai Varian = ", varian))


cat("===============Nomor 3===============\n")
# Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini 
# setiap hari. (gunakan Distribusi Poisson)

# a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

cat("a.\n")
lmbd <- 4.5
x <- 6
peluang <- dpois(x, lambda)
cat(paste("Peluang =", peluang, "\n"))

# b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)

cat("b.\n")
n <- 365
cat("Histogram Distribusi Poisson\n")
hist(rpois(n, lambda),
     main = "Histogram Distribusi Poisson",
     xlab = "x",
     col = "pink")

# c. bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

cat("c.\n")
cat("Hasil yang didapatkan pada poin B berdasarkan simulasi kelahiran 6 bayi akan lahir di rumah sakit selama setahun akan mendekati 
     peluang yang didapat pada poin A. Dapat disimpulkan bahwa simulasi distribusi poisson sesuai dengan pendistribusinya.\n")

# d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

cat("d.\n")
rataan <- lmbd
varian <- lmbd
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))


cat("===============Nomor 4===============\n")
# Diketahui nilai x = 2 dan v = 10. Tentukan:

# a. Fungsi Probabilitas dari Distribusi Chi-Square.

cat("a.\n")
x <- 2
v <- 10
peluang <- dchisq(x, v)
cat(paste("Peluang =", peluang, "\n"))

#b. Histogram dari Distribusi Chi-Square dengan 100 data random.

cat("b.\n")
n <- 100
cat("Histogram Distribusi Chi-Square\n")
hist(rchisq(n, v),
     main = "Histogram Distribusi Chi-Square",
     xlab = "x",
     col = "pink")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

cat("c.\n")
rataan <- v
varian <- 2 * v
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))


cat("===============Nomor 5===============\n")
# Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

# a. Fungsi Probabilitas dari Distribusi Exponensial 

cat("a.\n")
lmbd <- 3
peluang <- dexp(1, lmbd)
cat(paste("Peluang =", peluang, "\n"))

# b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

cat("b.\n")
n1 <- 10
n2 <- 100
n3 <- 1000
n4 <- 10000

cat("Histogram Distribusi Exponensial\n")
hist(rexp(n1, lambda),
     main = "Histogram Distribusi Exponensial untuk 10 Bilangan Random",
     xlab = "x",
     col = "pink")
hist(rexp(n2, lambda),
     main = "Histogram Distribusi Exponensial untuk 100 Bilangan Random",
     xlab = "x",
     col = "pink")
hist(rexp(n3, lambda),
     main = "Histogram Distribusi Exponensial untuk 1000 Bilangan Random",
     xlab = "x",
     col = "pink")
hist(rexp(n4, lambda),
     main = "Histogram Distribusi Exponensial untuk 10000 Bilangan Random",
     xlab = "x",
     col = "pink")

# c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

cat("c.\n")
n <- 100
set.seed(1)

rataan <- mean(rexp(n, lmbd))
varian <- var(rexp(n, lmbd))
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))


cat("===============Nomor 6===============\n")
# Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

# a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

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
plot(rd)

# b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

cat("b.\n")
cat("Histogram Distribusi Normal\n")
hist(rd,
     main = "5025211217_Rayhan Arvianta Bayuputra_Probstat_A_DNhistogram",
     xlab = "x",
     col = "pink",
     breaks = 50)

# c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

cat("c.\n")
varian <- var(rd)
cat(paste("Nilai Varian =", varian, "\n"))
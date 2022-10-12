# Modul1_Probstat_5025211217

**<br>Rayhan Arvianta Bayuputra**
**<br>5025211217
<br>Probstat A**

## SOAL 1
### Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi?
Penyelesaian dilakukan dengan menggunakan fungsi 'dgeom()'. Fungsi ini memiliki parameter 'x' dan 'p', dimana 'x' adalah jumlah kegagalan sebelum keberhasilan pertama dan 'p' adalah peluang dari setiap percobaan.
```R
cat("a.")
x <- 3
p <- 0.20
Peluang <- dgeom(x, p)
cat(paste("Peluang =", Peluang, "\n"))
```
![1a](https://user-images.githubusercontent.com/88714570/195344684-1b54e552-3bf8-4066-b857-60b2e34cf468.png)

### b. Mean Distribusi Geometrik dengan 10000 data random, prob = 0.20 dimana distribusi geometrik acak tersebut X = 3 (distribusi geometrik acak () == 3)
Penyelesaian dilakukan dengan menggunakan 'rgeom()'. rgeom adalah distribusi geometrik acak, generate sebuah nilai pada setiap sampel dengan percobaan sebanyak n kali.Fungsi ini memiliki parameter 'n' dan 'p', dimana 'n' adalah jumlah data random dan 'p' adalah peluang dari setiap percobaan. Kemudian, mean atau rata-rata dicari dengan menggunakan fungsi 'mean()' dari R. 
```R
cat("b.")
n <- 10000
mean <- mean(rgeom(n, p) == x)
cat(paste("Mean =", mean, "\n"))
```
![1b](https://user-images.githubusercontent.com/88714570/195344695-4f9855c6-8ec1-485d-b5ff-d0f9219df1ba.png)

### c. Bandingkan Hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
```
Pada poin A, hasil yang didapatkan akan tetap karena distribusi geometriknya yang sama.
Pada poin B, hasil yang didapatkan akan berbeda-beda karena distribusi geometriknya bernilai acak
Namun, hasil dari poin B akan selalui mendekati hasil pada poin A karena poin B merupakan estimasi
```
### d. Histogram distribusi geometrik, peluang X = 3 gagal sebelum sukses pertama
Histogram dapat dibuat dengan menggunakan fungsi hist(), dengan parameter-parameter yaitu: 'rgeom()', 'nama', label pada sumbu-x, serta warna untuk mempercantik histogramnya :D.
```R
hist(rgeom(n, p), 
     main = "Histogram Distribusi Geometrik", 
     xlab ="x",
     col = "pink")
```
![1d](https://user-images.githubusercontent.com/88714570/195344706-eae03f98-3a20-4fcc-8be8-76aa75494c86.png)

### E. Nilai Rataan (μ) dan Varian (σ²)
Rataan dan varian didapatkan dari rumus
```
rataan = 1 / Peluang_Orang_Hadir
varian = 1 - Peluang_Orang_Hadir) / (Peluang_Orang_Hadir)^2
```
Dengan implementasi kode berikut
```R
cat("e.")
rataan <- 1 / p
varian <- (1 - p) / (p^2)
cat(paste("Nilai rataan = ", rataan))
cat(paste("Nilai varian = ", varian))
```
![1e](https://user-images.githubusercontent.com/88714570/195344710-09f64c39-1226-4cce-b04a-d95ac6787e45.png)

## 2. Terdapat 20 pasien menderita Covid-19 dengan peluang sembuh sebesar 0.2. Tentukan :
### a. Peluang terdapat 4 pasien yang sembuh
Penyelesaian dilakukan dengan menggunakan fungsi dbinom. dbinom menghasilkan probabilitas mendapatkan sejumlah keberhasilan (x) dalam sejumlah percobaan.
```R
cat("a.")
n <- 20
p <- 0.2
sembuh <- 4
p4 <- dbinom(sembuh, n, p)
cat(paste("Peluang =", p4, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195348810-a6a1938d-6eb7-403f-babe-1ecacd44ef40.png)

### b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```R
hist(rbinom(20, 20, 0.2),
     main = "Histogram Distribusi Binomial",
     xlab = "x",
     col = "pink")
```
![image](https://user-images.githubusercontent.com/88714570/195348828-97b057ad-b7c4-49fc-9ac8-db7c79e8b238.png)

### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial
Rataan dan varian didapatkan dari rumus berikut
```
rataan = Pasien_Sembuh * Peluang_Sembuh
varian = rataan * (1 - Peluang_Sembuh)
```
Dengan implementasi kode berikut
```R
rataan = sembuh * p
varian = rataan * (1- p)
cat(paste("Nilai Rataan = ", rataan))
cat(paste("Nilai Varian = ", varian))
```
![image](https://user-images.githubusercontent.com/88714570/195348833-2fe073ec-6634-4eac-b219-a01fdf90c4e1.png)

## 3. Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari.
### a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```R
cat("a.")
lmbd <- 4.5
x <- 6
peluang <- dpois(x, lmbd)
cat(paste("Peluang =", peluang, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195352621-458dae5c-9549-4859-8378-881ebf6e1d75.png)

### b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
```R
n <- 365
cat("Histogram Distribusi Poisson\n")
hist(rpois(n, lmbd),
     main = "Histogram Distribusi Poisson",
     xlab = "x",
     col = "pink")
```
![image](https://user-images.githubusercontent.com/88714570/195352629-1f4e81db-cd20-413e-8107-4632f6128016.png)
### c. Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
```
Hasil yang didapatkan pada poin B berdasarkan simulasi kelahiran 6 bayi akan lahir di rumah sakit selama setahun akan mendekati 
peluang yang didapat pada poin A. Dapat disimpulkan bahwa simulasi distribusi poisson sesuai dengan pendistribusinya.
```
### d. Nilai Rataan (μ) dan Varian (σ²)
Rataan dan varian didapatkan dari rumus
```
rataan = lambda
varian = lambda
```
Dengan implementasi kode
```R
rataan <- lmbd
varian <- lmbd
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195352632-e373b5d0-4ba3-43e2-aa78-a645c61b2a60.png)

## 4. Diketahui nilai x = 2 dan v = 10. Tentukan
### a. Fungsi Probabilitas dari Distribusi Chi-Square.
```R
cat("a.")
x <- 2
v <- 10
peluang <- dchisq(x, v)
cat(paste("Peluang =", peluang, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195354014-4aba2fff-291f-4722-a0c9-730fd7d690bb.png)

### b. Histogram dari Distribusi Chi-Square dengan 100 data random.
```R
n <- 100
hist(rchisq(n, v),
     main = "Histogram Distribusi Chi-Square",
     xlab = "x",
     col = "pink")
```
![image](https://user-images.githubusercontent.com/88714570/195354024-31d0e791-5582-4b37-8861-a325ab5430d6.png)

### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square
Rataan dan varian bisa didapatkan dengan rumus berikut
```
rataan = v
varian = 2 * v
```
Dengan implementasi kode
```R
cat("c.")
rataan <- v
varian <- 2 * v
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195354027-af991630-b9a1-44b9-a840-677e06045a60.png)

## 5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
### a. Fungsi Probabilitas dari Distribusi Exponensial
```R
cat("a.")
lmbd <- 3
peluang <- dexp(1, lmbd)
cat(paste("Peluang =", peluang, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195356162-e008ad1b-907a-4bd5-8f6c-a3e3daa23640.png)
### b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```R
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
```
![image](https://user-images.githubusercontent.com/88714570/195356174-c25bf0ef-f7b0-4202-8a26-a9f3f6beefe7.png)
![image](https://user-images.githubusercontent.com/88714570/195356177-ee434709-cccc-4ed7-8b5b-fc33734fa325.png)
![image](https://user-images.githubusercontent.com/88714570/195356187-fd475672-5ba3-4bc3-8106-6d8fc448d277.png)
![image](https://user-images.githubusercontent.com/88714570/195356192-e65dfa91-9b8c-47b3-b6a7-0eaa061d9885.png)

### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Rataan dan varian dapat dengan fungsi-fungsi dari R
```R
cat("c.")
n <- 100
set.seed(1)

rataan <- mean(rexp(n, lmbd))
varian <- var(rexp(n, lmbd))
cat(paste("Nilai Rataan =", rataan, "\n"))
cat(paste("Nilai Varian =", varian, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195356201-87adf5e5-38cd-4061-8d4e-e9627441f092.png)

## 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8
### a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik
```R
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
```
![image](https://user-images.githubusercontent.com/88714570/195357948-c802d508-e31e-4fba-ba8d-88e6ad979051.png)
![image](https://user-images.githubusercontent.com/88714570/195357960-018031f9-486b-48e9-97b4-3e2eef3f4653.png)

### b. Generate Histogram dari Distribusi Normal dengan breaks 50
```R
cat("b.\n")
hist(rd,
     main = "5025211217_Rayhan Arvianta Bayuputra_Probstat_A_DNhistogram",
     xlab = "x",
     col = "pink",
     breaks = 50)
```
![image](https://user-images.githubusercontent.com/88714570/195357964-53db3ddc-4c48-46a1-938c-8c2cf8b2229a.png)
### c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal
Nilai varian didapatkan dengan fungsi dari R
```R
cat("c.\n")
varian <- var(rd)
cat(paste("Nilai Varian =", varian, "\n"))
```
![image](https://user-images.githubusercontent.com/88714570/195357967-6d65a357-850f-4fd9-92ca-ba78d30a044a.png)

#! /usr/bin/env julia

println(" retorna una muestra aleatoria de una normal con media µ y desviación estándar σ")
println("función aleanormal(μ, σ, n) ")
println("n: número de simulaciones") 
function aleanormal(µ, σ ,n)
	v=zeros(n)
	for i in 1:n
    if σ <= 0.0
    error(" la desviación estándar debe ser positiva ")
    end
    u1 = rand()
    u2 = rand()
    r = sqrt( -2.0*log(u1) )
    θ=2.0*pi*u2 
    v[i]=µ + σ*r*sin(θ)
	end
return(v)
end
a = aleanormal(0,1,20)
println(" aleanormal(0,1,20) ", a)


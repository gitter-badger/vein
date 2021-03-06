% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ef_hdv_scaled.R
\name{ef_hdv_scaled}
\alias{ef_hdv_scaled}
\title{Scaling constant with speed emission factors of Heavy Duty Vehicles}
\usage{
ef_hdv_scaled(df, dfcol, SDC = 34.12, v, t, g, eu, gr = 0, l = 0.5, p)
}
\arguments{
\item{df}{deprecated}

\item{dfcol}{Column of the dataframe with the local emission factors eg df$dfcol}

\item{SDC}{Speed of the driving cycle}

\item{v}{Category vehicle: "Coach", "Trucks" or "Ubus"}

\item{t}{Sub-category of of vehicle: "3Axes", "Artic", "Midi", "RT, "Std" and "TT"}

\item{g}{Gross weight of each category: "<=18", ">18", "<=15", ">15 & <=18", "<=7.5",
">7.5 & <=12", ">12 & <=14", ">14 & <=20", ">20 & <=26", ">26 & <=28", ">28 & <=32",
">32", ">20 & <=28", ">28 & <=34", ">34 & <=40", ">40 & <=50" or ">50 & <=60"}

\item{eu}{Euro emission standard: "PRE", "I", "II", "III", "IV" and "V"}

\item{gr}{Gradient or slope of road: -0.06, -0.04, -0.02, 0.00, 0.02. 0.04 or 0.06}

\item{l}{Load of the vehicle: 0.0, 0.5 or 1.0}

\item{p}{Pollutant: "CO", "FC", "NOx" or "HC"}
}
\value{
A list of scaled emission factors g/km
}
\description{
\code{\link{ef_hdv_scaled}} creates a list of scaled functions of emission factors. A scaled
emission factor which at a speed of the dricing cycle (SDC) gives a desired value.
This function needs a dataframe with local emission factors with a columns with
the name "Euro_HDV" indicating the Euro equivalence standard, assuming that there are
available local emission factors for several consecutive years.
}
\note{
The length of the list should be equal to the name of the age categories of
a specific type of vehicle
}
\examples{
\dontrun{
# Do not run
data(fe2015)
co1 <- fe2015[fe2015$Pollutant=="CO",]
lef <- ef_hdv_scaled(dfcol = co1$LT, v = "Trucks", t = "RT",
g = "<=7.5", eu = co1$Euro_HDV, gr = 0, l = 0.5, p = "CO")
length(lef)
plot(x = 0:150, y = lef[[36]](0:150), col = "red", type = "b", ylab = "[g/km]",
pch = 16, xlab = "[km/h]",
main = "Variation of emissions with speed of oldest vehicle")
plot(x = 0:150, y = lef[[1]](0:150), col = "blue", type = "b", ylab = "[g/km]",
pch = 16, xlab = "[km/h]",
main = "Variation of emissions with speed of newest vehicle")
}
}
\keyword{emission}
\keyword{factors}
\keyword{speed}

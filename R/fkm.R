#' List of functions of mileage in km fro Brazilian fleet
#'
#' Functions from CETESB:
#' Antonio de Castro Bruni and Marcelo Pereira Bales. 2013.
#' Curvas de intensidade de uso por tipo de veiculo automotor da frota da cidade de Sao Paulo
#' This functions depends on the age of use of the vehicle
#'
#' @format A data frame with 288 rows and 12 variables:
#' \describe{
#'   \item{KM_PC_E25}{Mileage in km of Passenger Cars using Gasoline with 25\% Ethanol}
#'   \item{KM_PC_E100}{Mileage in km of Passenger Cars using Ethanol 100\%}
#'   \item{KM_PC_FLEX}{Mileage in km of Passenger Cars using Flex engines}
#'   \item{KM_LCV_E25}{Mileage in km of Light Commercial Vehicles using Gasoline with 25\% Ethanol}
#'   \item{KM_LCV_FLEX}{Mileage in km of Light Commercial Vehicles using Flex}
#'   \item{KM_PC_B5}{Mileage in km of Passenger Cars using Diesel with 5\% biodiesel}
#'   \item{KM_TRUCKS_B5}{Mileage in km of Trucks using Diesel with 5\% biodiesel}
#'   \item{KM_BUS_B5}{Mileage in km of Bus using Diesel with 5\% biodiesel}
#'   \item{KM_LCV_B5}{Mileage in km of Light Commercial Vehicles using Diesel with 5\% biodiesel}
#'   \item{KM_SBUS_B5}{Mileage in km of Small Bus using Diesel with 5\% biodiesel}
#'   \item{KM_ATRUCKS_B5}{Mileage in km of Articulated Trucks using Diesel with 5\% biodiesel}
#'   \item{KM_MOTO_E25}{Mileage in km of Motorcycles using Gasoline with 25\% Ethanol}
#'   \item{KM_LDV_GNV}{Mileage in km of Light Duty Vehicles using Natural Gas}
##' }
#' @source CETESB
#' @usage data(fkm)
#' @docType data
"fkm"

## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(anglr)

## ----print--------------------------------------------------------------------
library(anglr)
library(silicate)
data("minimal_mesh", package = "silicate")
DEL(minimal_mesh)

DEL0(minimal_mesh)

## ----plot---------------------------------------------------------------------
mesh_plot(DEL(minimal_mesh))

## ----plot-triangles-----------------------------------------------------------
mesh0 <- DEL(minimal_mesh)
mesh_plot(mesh0, col = viridis::viridis(nrow(mesh0$triangle)))

## ----plot-denser--------------------------------------------------------------
mesh1 <- DEL(minimal_mesh, max_area = 0.01)
mesh_plot(mesh1, col = viridis::viridis(nrow(mesh1$triangle)))


## ----TRI-mesh-----------------------------------------------------------------
tri0 <- TRI(minimal_mesh)
mesh_plot(tri0, col = viridis::viridis(nrow(tri0$triangle)))

## ----plot3d-------------------------------------------------------------------
wire3d(mesh1)

#rgl::snapshot3d("wire.png")


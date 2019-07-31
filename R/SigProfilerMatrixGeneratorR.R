#' @title
#'
#' @description
#'
#' @param
#'
#' @return
#'
#' @examples
#'
#' @export func

func <- function(project, genome, matrix_path, exome=F, bed_file=NULL, chrom_based=F, plot=F, tsb_stat=F, seqInfo=F, cushion=100, gs=F) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")

  matGen <- reticulate::import("SigProfilerMatrixGenerator.scripts.SigProfilerMatrixGeneratorFunc")
  matrices <- matGen$SigProfilerMatrixGeneratorFunc(project, genome, matrix_path, exome, bed_file, chrom_based, plot, tsb_stat, seqInfo, cushion, gs)
  sys$stdout$flush()
  return(matrices)
}

#' @export install
install <- function(genome, custom=F, rsync=F, bash=T, ftp=T){
  genInstall <- reticulate::import("SigProfilerMatrixGenerator.install")
  genInstall$install(genome, custom, rsync, bash, ftp)
}

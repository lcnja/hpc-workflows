#!/bin/bash
#SBATCH -J OpenFOAM
#SBATCH -A nesi99999		# Project account
#SBATCH -D /share/test/OpenFOAM/test01
#SBATCH --time=06:00:00 	# Walltime
#SBATCH --mem-per-cpu=4G	# memory/cpu 
#SBATCH --ntasks=256		# MPI processes

module load OpenFOAM/2.3.1-intel-2015a
source $FOAM_BASH

srun interFoam -parallel


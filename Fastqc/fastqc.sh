#!/bin/bash

# ###### Zona de Parámetros de solicitud de recursos a SLURM ############################
#
#SBATCH --job-name=FASTQC		#Nombre del job
#SBATCH -p long 			#Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 4				#Nodos requeridos, Default=1
#SBATCH -n 1				#Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=1		#Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=50g		#Memoria en Mb por CPU, Default=2048
#SBATCH --time=10-00:00:00			#Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=en.duarte1086@uniandes.edu.co
#SBATCH --mail-type=ALL			
#SBATCH -o TEST_job.o%j			#Nombre de archivo de salida
#
########################################################################################

# ################## Zona Carga de Módulos ############################################
module load  fastqc

########################################################################################
PWD='/hpcfs/home/ciencias_biologicas/en.duarte1086/SRA'

# ###### Zona de Ejecución de código y comandos a ejecutar secuencialmente #############
fastqc -o /hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/FASTQC/RNA-seq/Resultado/ ${PWD}/Bud1/SRR15399180_1.fastq ${PWD}/Bud1/SRR15399180_2.fastq ${PWD}/Bud2/SRR15399179_1.fastq ${PWD}/Bud2/SRR15399179_2.fastq ${PWD}/Bud3/SRR15399175_1.fastq ${PWD}/Bud3/SRR15399175_2.fastq ${PWD}/Flower/SRR15399176_1.fastq ${PWD}/Flower/SRR15399176_2.fastq ${PWD}/OldLeaf/SRR15399177_1.fastq ${PWD}/OldLeaf/SRR15399177_2.fastq  \
${PWD}/Root1/SRR15399168_1.fastq ${PWD}/Root1/SRR15399168_2.fastq ${PWD}/Root2/SRR15399178_1.fastq ${PWD}/Root2/SRR15399178_2.fastq ${PWD}/Stem1/SRR15399171_1.fastq ${PWD}/Stem1/SRR15399171_2.fastq ${PWD}/Stem2/SRR15399170_1.fastq ${PWD}/Stem2/SRR15399170_2.fastq  \
${PWD}/Stem3/SRR15399169_1.fastq ${PWD}/Stem3/SRR15399169_2.fastq ${PWD}/Youngleaf1/SRR15399174_1.fastq ${PWD}/Youngleaf1/SRR15399174_2.fastq ${PWD}/Youngleaf2/SRR15399173_1.fastq ${PWD}/Youngleaf2/SRR15399173_2.fastq ${PWD}/Youngleaf3/SRR15399172_1.fastq ${PWD}/Youngleaf3/SRR15399172_2.fastq

########################################################################################


#!/bin/bash                                                                                                                                   

#SBATCH --job-name=kmergenie                                                                                                                     
#SBATCH -p short                                                                                                                             
#SBATCH -N 1                                                                                                                                  
#SBATCH -n 1    #Tasks paralelos, recomendado para MPI, Default=1                                                                             
#SBATCH --cpus-per-task=1       #Cores requeridos por task, recomendado para multi-thread, Default=1                                          
#SBATCH --time=20:00:00                                                                                                                      
#SBATCH --mem=40g                                                                                                                             
#SBATCH --mail-user=en.duarte1086@uniandes.edu.co                                                                                                 
#SBATCH --mail-type=ALL                                                                                                                       
#SBATCH -o kmergenie.o%j    

INPUT="/hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/TRIMMOMATIC/TRIMMED/Version2"

module load kmergenie/1.7051
kmergenie $INPUT/ILLUMINA_DATAE.Novo_Trimmed_V2_1P.fastq --diploid
kmergenie $INPUT/ILLUMINA_DATAE.Novo_Trimmed_V2_2P.fastq --diploid

echo "done" 




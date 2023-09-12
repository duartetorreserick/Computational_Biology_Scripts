#!/bin/bash                                                                                                                                   

#SBATCH --job-name=trimmo                                                                                                                     
#SBATCH -p short                                                                                                                             
#SBATCH -N 1                                                                                                                                  
#SBATCH -n 1    #Tasks paralelos, recomendado para MPI, Default=1                                                                             
#SBATCH --cpus-per-task=1       #Cores requeridos por task, recomendado para multi-thread, Default=1                                          
#SBATCH --time=20:00:00                                                                                                                      
#SBATCH --mem=40g                                                                                                                             
#SBATCH --mail-user=en.duarte1086@uniandes.edu.co                                                                                                 
#SBATCH --mail-type=ALL                                                                                                                       
#SBATCH -o trimmo.o%j    

INPUT="/hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/DATOS/ILLUMINA_DATA"
ADAPTER="/hpcfs/apps/anaconda/3.9/envs/trimmomatic-0.39/share/trimmomatic-0.39-2/adapters"

module load jdk/11.0.14
module load trimmomatic/0.39
trimmomatic PE -phred33 ${INPUT}/1862640_R1_001.fastq ${INPUT}/1862640_R2_001.fastq -baseout ${INPUT}E.Novo_Trimmed_V2.fastq ILLUMINACLIP:/hpcfs/home/ciencias_biologicas/en.duarte1086/ENSAMBLAJE/TRIMMOMATIC/Customized.fa:2:40:15:2 SLIDINGWINDOW:4:15 MINLEN:40

echo "listopapi" 




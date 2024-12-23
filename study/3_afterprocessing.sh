# plink 함수는 9개 파라미터만 계산할 수 있기 때문에, 염색체 22개에 대한 파일을 하나의 파일로 합침
cat /content/drive/MyDrive/hu794_pst_eff_a1_b0.5_phi1e-03_chr* > combined_score_hu794.txt


# 최종 PRS 계산을 위한 참조 원본 genetic data는 bed, bim, fam 파일 세 세트가 모두 있어야 하므로, 23andMe public genetic data 를 다시 전처리
python /study/personalprepross_2.py


# 최종 PRS score 계산 (plink 사용)
./plink --bfile plink_output --score combined_score_hu794.txt 2 4 6 sum --out final_prs_hu794

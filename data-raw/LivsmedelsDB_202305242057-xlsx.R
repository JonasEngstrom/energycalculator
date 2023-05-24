## code to prepare `LivsmedelsDB_202305242057.xlsx` dataset goes here

# The data in the dataset prepared below is derived from the Swedish language
# version of [the Swedish Food Agency food database, version
# 2022-05-24](https://www.livsmedelsverket.se/livsmedelsdatabasen), available
# under a Creative Commons Attribution 4.0 license.

food_database <-
  readxl::read_xlsx('data-raw/LivsmedelsDB_202305242057.xlsx', skip = 2) |>
  dplyr::rename(
    food_name = `Livsmedelsnamn`,
    food_number = `Livsmedelsnummer`,
    grouping = `Gruppering`,
    energy_kcal = `Energi (kcal)`,
    energy_kj = `Energi (kJ)`,
    fat_total_g = `Fett, totalt (g)`,
    protein_g = `Protein (g)`,
    carbohydrates_available_g = `Kolhydrater, tillgängliga (g)`,
    fibers_g = `Fibrer (g)`,
    water_g = `Vatten (g)`,
    alcohol_g = `Alkohol (g)`,
    ash_g = `Aska (g)`,
    sugars_total_g = `Sockerarter, totalt (g)`,
    monosaccharides_g = `Monosackarider (g)`,
    disaccharides_g = `Disackarider (g)`,
    added_sugar_g = `Tillsatt socker (g)`,
    free_sugar_g = `Fritt socker (g)`,
    whole_grain_total_g = `Fullkorn totalt (g)`,
    sum_saturated_fatty_acids_g = `Summa mättade fettsyror (g)`,
    fatty_acid_4_0_to_10_0_g = `Fettsyra 4:0-10:0 (g)`,
    lauric_acid_c12_0_g = `Laurinsyra C12:0 (g)`,
    myristic_acid_c14_0_g = `Myristinsyra C14:0 (g)`,
    palmitic_acid_c16_0_g = `Palmitinsyra C16:0 (g)`,
    stearic_acid_c18_0 = `Stearinsyra C18:0 (g)`,
    arachidic_acid_c20_0_g = `Arakidinsyra C20:0 (g)`,
    sum_monounsaturated_fatty_acids_g = `Summa enkelomättade fettsyror (g)`,
    palmitoleic_acid_c16_1_g = `Palmitoljesyra C16:1 (g)`,
    oleic_acid_c18_1_g = `Oljesyra C18:1 (g)`,
    sum_polyunsaturated_fatty_acids_g = `Summa fleromättade fettsyror (g)`,
    linoleic_acid_c18_2_g = `Linolsyra C18:2 (g)`,
    linolenic_acid_c18_3_g = `Linolensyra C18:3 (g)`,
    arachidonic_acid_c20_4_g = `Arakidonsyra C20:4 (g)`,
    epa_c20_5_g = `EPA (C20:5) (g)`,
    dpa_c22_5_g = `DPA (C22:5) (g)`,
    dha_c22_6_g = `DHA (C22:6) (g)`,
    cholesterol_mg = `Kolesterol (mg)`,
    vitamin_a_re_per_mcg = `Vitamin A (RE/µg)`,
    retinol_mcg = `Retinol (µg)`,
    beta_carotene_mcg = `Betakaroten/β-Karoten (µg)`,
    vitamin_d_mcg = `Vitamin D (µg)`,
    vitamin_e_mg = `Vitamin E (mg)`,
    vitamin_k_mcg = `Vitamin K (µg)`,
    thiamine_mg = `Tiamin (mg)`,
    riboflavin_mg = `Riboflavin (mg)`,
    niacin_mg = `Niacin (mg)`,
    niacin_equivalents_ne_per_mg = `Niacinekvivalenter (NE/mg)`,
    vitamin_b6_mg = `Vitamin B6 (mg)`,
    folate_mcg = `Folat (µg)`,
    vitamin_b12_mcg = `Vitamin B12 (µg)`,
    vitamin_c_mg = `Vitamin C (mg)`,
    phosphorous_mg = `Fosfor, P (mg)`,
    iodine_mcg = `Jod, I (µg)`,
    iron_mg = `Järn, Fe (mg)`,
    calcium_mg = `Kalcium, Ca (mg)`,
    potassium_mg = `Kalium, K (mg)`,
    magnesium_mg = `Magnesium, Mg (mg)`,
    sodium_mg = `Natrium, Na (mg)`,
    sodium_chloride_g = `Salt, NaCl (g)`,
    selenium_mcg = `Selen, Se (µg)`,
    zink_mg = `Zink, Zn (mg)`,
    waste_pct = `Avfall (skal etc.) (%)`
  )

usethis::use_data(food_database, overwrite = TRUE)

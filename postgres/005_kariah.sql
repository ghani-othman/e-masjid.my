CREATE TABLE kariah_dependents(
    id SERIAL PRIMARY KEY,
    person_id INTEGER REFERENCES person(id),
    hubungan_type_id INTEGER REFERENCES tetapan_types(id)
);

CREATE TABLE kariah_members(
    id SERIAL PRIMARY KEY,
    person_id INTEGER REFERENCES person(id),
    bangsa INTEGER REFERENCES tetapan_types(id),
    pekerjaan INTEGER REFERENCES tetapan_types(id),
    warganegara INTEGER REFERENCES tetapan_types(id),
    status_perkahwinan INTEGER REFERENCES tetapan_types(id),
    is_khairat_kematian BOOLEAN DEFAULT(FALSE),
    is_oku BOOLEAN DEFAULT(FALSE),
    file_id_bil_utiliti INTEGER REFERENCES uploaded_files_cdn(id),
    file_id_gambar INTEGER REFERENCES uploaded_files_cdn(id)
);

CREATE TABLE kariah_members_assigned_types(
    id SERIAL PRIMARY KEY,
    kariah_member_id INTEGER REFERENCES kariah_members(id),
    tetapan_types_id INTEGER REFERENCES tetapan_types(id),
    tetapan_types_group_name VARCHAR(32)
);

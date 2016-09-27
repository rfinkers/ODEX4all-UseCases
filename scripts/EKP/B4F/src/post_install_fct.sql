--
-- Post-installation: Virtuoso Faceted Browser
--

-- build full-text indices
DB.DBA.RDF_OBJ_FT_RULE_ADD (null, null, 'All');
DB.DBA.VT_INC_INDEX_DB_DBA_RDF_OBJ();

-- periodically populate label lookup tables
urilbl_ac_init_db();

DB.DBA.RDF_OBJ_FT_RULE_ADD (null, null, 'All');
DB.DBA.VT_INC_INDEX_DB_DBA_RDF_OBJ();
urilbl_ac_init_db();

-- re-rank the IRIs (should be done periodically)
s_rank();

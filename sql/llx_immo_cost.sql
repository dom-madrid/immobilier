-- ===================================================================
-- Copyright (C) 2016      Olivier Geffroy      <jeff@jeffinfo.com>
-- Copyright (C) 2016      Alexandre Spangaro   <aspangaro.dolibarr@gmail.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ===================================================================

CREATE TABLE IF NOT EXISTS llx_immo_cost
(
	rowid			integer AUTO_INCREMENT PRIMARY KEY,
	fk_property     integer,
	fk_soc			integer,
	type     		integer,
	label			varchar(256) 	NOT NULL,
	supplier		varchar(256) 	DEFAULT '' NOT NULL,
	amount_ht 		real 	DEFAULT 0 NOT NULL,
	amount_vat 		real 	DEFAULT 0 NOT NULL,
	amount 			real 	DEFAULT 0 NOT NULL,
	date			date,
	date_start		date,
	date_end		date,
	note            text,
	fk_owner	    integer,
	dispatch		integer    DEFAULT 0 NOT NULL,
	fk_user_author	integer,
	fk_user_modif	integer
)ENGINE=InnoDB;
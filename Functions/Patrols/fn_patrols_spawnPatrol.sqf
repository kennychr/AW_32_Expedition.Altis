/*
 * Author: Christiansen
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Array with groups
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
params ["_amount","_campCenter"];
_pos = getPos _campCenter;
 _groups = [EAST, _amount, _pos, 60] call AW_fnc_ai_spawnEnemy;
 [_groups, [["patrol", true, 4000]]] call AW_fnc_ai_setBehaviour;

{
  [_x] call AW_fnc_patrols_add_eventhandler;
} forEach _groups;

AW_Patrols = AW_Patrols + _groups; hint format ["%1",AW_Patrols];
_groups

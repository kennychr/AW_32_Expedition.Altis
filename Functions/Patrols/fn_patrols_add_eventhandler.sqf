/*
 * Author: Christiansen
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
params ["_group"];
{
 _x addEventHandler ["killed",{

   _grp = group (_this select 0);
   if ({ alive _x } count units _grp < 1) then  {
        //DEBUG START
         hint "All units from the group have died";
        //DEBUG END
        AW_Patrols = AW_Patrols - [_grp];
      };

   }];
 //DEBUG
 hint format ["Eventhandler added for group :: %1 ::",_group];
} forEach units _group;

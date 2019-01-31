with Interfaces; use Interfaces;

package body CorbaCBSG_CBSG_Hash is

   P : constant array (0 .. 1) of Natural :=
     (4, 10);

   T1 : constant array (0 .. 1) of Unsigned_8 :=
     (7, 6);

   T2 : constant array (0 .. 1) of Unsigned_8 :=
     (2, 19);

   G : constant array (0 .. 20) of Unsigned_8 :=
     (4, 0, 0, 7, 0, 0, 0, 0, 1, 3, 1, 3, 0, 0, 5, 0, 0, 5, 0, 2, 0);

   function Hash (S : String) return Natural is
      F : constant Natural := S'First - 1;
      L : constant Natural := S'Length;
      F1, F2 : Natural := 0;
      J : Natural;
   begin
      for K in P'Range loop
         exit when L < P (K);
         J  := Character'Pos (S (P (K) + F));
         F1 := (F1 + Natural (T1 (K)) * J) mod 21;
         F2 := (F2 + Natural (T2 (K)) * J) mod 21;
      end loop;
      return (Natural (G (F1)) + Natural (G (F2))) mod 10;
   end Hash;

end CorbaCBSG_CBSG_Hash;

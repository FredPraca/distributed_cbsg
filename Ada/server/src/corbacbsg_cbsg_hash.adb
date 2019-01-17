with Interfaces; use Interfaces;

package body CorbaCBSG_CBSG_Hash is

   P : constant array (0 .. 1) of Natural :=
     (4, 8);

   T1 : constant array (0 .. 1) of Unsigned_8 :=
     (16, 10);

   T2 : constant array (0 .. 1) of Unsigned_8 :=
     (3, 7);

   G : constant array (0 .. 19) of Unsigned_8 :=
     (0, 0, 0, 5, 0, 4, 3, 2, 1, 0, 3, 0, 0, 0, 6, 0, 0, 0, 0, 2);

   function Hash (S : String) return Natural is
      F : constant Natural := S'First - 1;
      L : constant Natural := S'Length;
      F1, F2 : Natural := 0;
      J : Natural;
   begin
      for K in P'Range loop
         exit when L < P (K);
         J  := Character'Pos (S (P (K) + F));
         F1 := (F1 + Natural (T1 (K)) * J) mod 20;
         F2 := (F2 + Natural (T2 (K)) * J) mod 20;
      end loop;
      return (Natural (G (F1)) + Natural (G (F2))) mod 9;
   end Hash;

end CorbaCBSG_CBSG_Hash;

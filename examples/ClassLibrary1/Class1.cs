using System.Runtime.InteropServices;

namespace ClassLibrary1
{
    public class Math
    {
        public static int Add(int a, int b)
        {
            return ffi_add(a, b);
        }

        [DllImport("math.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ffi_add(int a, int b);
    }
}
/*
#[no_mangle]
extern fn ffi_add(left: u64, right: u64) -> u64 {
    add(left, right)
}
*/
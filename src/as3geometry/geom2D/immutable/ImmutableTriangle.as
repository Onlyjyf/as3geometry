package as3geometry.geom2D.immutable 
{
	import as3geometry.geom2D.Triangle;
	import as3geometry.geom2D.Vertex;
	import as3geometry.geom2D.errors.MutabilityError;
	import as3geometry.geom2D.mutable.Mutable;

	/**
	 * Defines a triangle on a Cartesian plane by three vertices
	 *
	 * (c) 2009 alecmce.com
	 *
	 * @author Alec McEachran
	 */
	public class ImmutableTriangle implements Triangle
	{
		
		/*********************************************************************/
		// Member Variables
		/*********************************************************************/
		
		
		/** a vertex of the triangle */
		private var _a:Vertex;
		
		private var _b:Vertex;
		
		private var _c:Vertex;
		
		
		/*********************************************************************/
		// Public Methods
		/*********************************************************************/
		
		
		public function ImmutableTriangle(a:Vertex = null, b:Vertex = null, c:Vertex = null)
		{
			_a = a ? a : new ImmutableVertex(0, 0);
			
			if (_a is Mutable || _b is Mutable || _c is Mutable)
				throw new MutabilityError("One of the ImmutableTriangle's definitional points is mutable");
		}
		
		public function get a():Vertex
		{
			return _a;
		}
		
		public function get b():Vertex
		{
			return _b;
		}
		
		public function get c():Vertex
		{
			return _c;
		}

		public function toString():String
		{
			return "[TRIANGLE " + _a + ", " + _b + ", " + _c + "]";
		}
		
		
	}
}
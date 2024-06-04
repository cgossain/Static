import DifferenceKit

extension Section: DifferentiableSection {
    
    public var elements: [Row] {
        return rows
    }
    
    public var differenceIdentifier: String {
        return uuid
    }
    
    public init<C>(source: Section, elements: C) where C : Collection, C.Element == Row {
        self.uuid = source.uuid
        self.header = source.header
        self.rows = Array(elements)
        self.footer = source.footer
        self.indexTitle = source.indexTitle
    }

    public func isContentEqual(to source: Section) -> Bool {
        return self == source
    }
}

extension Row: Differentiable {
    public var differenceIdentifier: String {
        return uuid
    }

    public func isContentEqual(to source: Row) -> Bool {
        return self == source
    }
}
